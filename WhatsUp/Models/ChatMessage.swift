//
//  ChatMessage.swift
//  WhatsUp
//
//  Created by Ravikanth Thummala on 3/15/23.
//

import Foundation
import FirebaseFirestore

struct ChatMessage: Codable, Identifiable, Equatable {
    
    var documentId: String?
    let text: String
    let uid: String
    var dateCreated = Date()
    let displayName: String
    var profilePhotoURL: String = ""
    var attachMentPhotoURL: String = ""

    var id: String {
        documentId ?? UUID().uuidString
    }
    
    var displayProfilePhotoURL: URL? {
        profilePhotoURL.isEmpty ? nil: URL(string: profilePhotoURL)
    }
    
    var displayAttachmentURL: URL? {
        attachMentPhotoURL.isEmpty ? nil : URL(string: attachMentPhotoURL)
    }
}

extension ChatMessage {
    
    func toDictionary() -> [String: Any] {
        return [
            "text": text,
            "uid": uid,
            "dateCreated": dateCreated,
            "displayName": displayName,
            "profilePhotoURL": profilePhotoURL,
            "attachmentPhotoURL": attachMentPhotoURL
        ]
    }
    
    static func fromSnapshot(snapshot: QueryDocumentSnapshot) -> ChatMessage? {
        
        let dictionary = snapshot.data()
        guard let text = dictionary["text"] as? String,
              let uid = dictionary["uid"] as? String,
              let dateCreated = (dictionary["dateCreated"] as? Timestamp)?.dateValue() ,
              let displayName = dictionary["displayName"] as? String,
              let profilePhotoURL = dictionary["profilePhotoURL"] as? String,
              let attachmentPhotoURL = dictionary["attachmentPhotoURL"] as? String

        else {
            return nil
        }
        
        return ChatMessage(documentId: snapshot.documentID, text: text, uid: uid, dateCreated: dateCreated, displayName: displayName, profilePhotoURL: profilePhotoURL,attachMentPhotoURL: attachmentPhotoURL)
    }
    
}
