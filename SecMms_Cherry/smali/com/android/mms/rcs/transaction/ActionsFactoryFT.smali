.class public Lcom/android/mms/rcs/transaction/ActionsFactoryFT;
.super Ljava/lang/Object;
.source "ActionsFactoryFT.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->attachFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static attachFile(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # J

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->attachFile(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static attachFile(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # Ljava/lang/String;

    const-string v1, "com.samsung.rcs.framework.filetransfer.action.ATTACH_FILE"

    invoke-static {v1}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->newFtAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contactUri"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "request_session_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "contactName"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static attachFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const-string v1, "com.samsung.rcs.framework.filetransfer.action.ATTACH_FILE"

    invoke-static {v1}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->newFtAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contactUri"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "contactName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static buildAcceptIntent(J)Landroid/content/Intent;
    .locals 1
    .param p0    # J

    const-string v0, "com.samsung.rcs.framework.filetransfer.action.TRANSFER_ACCEPT"

    invoke-static {v0, p0, p1}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->newFtAction(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildAcceptIntent(JLjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0    # J
    .param p2    # Ljava/lang/String;

    const-string v1, "com.samsung.rcs.framework.filetransfer.action.TRANSFER_ACCEPT"

    invoke-static {v1, p0, p1}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->newFtAction(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static buildCancelIntent(J)Landroid/content/Intent;
    .locals 1
    .param p0    # J

    const-string v0, "com.samsung.rcs.framework.filetransfer.action.TRANSFER_CANCEL"

    invoke-static {v0, p0, p1}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->newFtAction(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildRejectIntent(J)Landroid/content/Intent;
    .locals 1
    .param p0    # J

    const-string v0, "com.samsung.rcs.framework.filetransfer.action.TRANSFER_DECLINE"

    invoke-static {v0, p0, p1}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->newFtAction(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildUploadIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0    # Ljava/lang/String;

    const-string v1, "com.samsung.rcs.framework.filetransfer.action.TRANSFER_UPLOAD"

    invoke-static {v1}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->newFtAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createSendFileRequest(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/net/Uri;
    .param p1    # Ljava/lang/String;

    const-string v1, "com.samsung.rcs.framework.filetransfer.action.SEND_FILE"

    invoke-static {v1}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->newFtAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createSendFileRequest(Landroid/net/Uri;Ljava/lang/String;J)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/net/Uri;
    .param p1    # Ljava/lang/String;
    .param p2    # J

    const-string v1, "com.samsung.rcs.framework.filetransfer.action.SEND_FILE"

    invoke-static {v1, p2, p3}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->newFtAction(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createSendFileRequestForGroupChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;
    .locals 2
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # J

    const-string v1, "com.samsung.rcs.framework.filetransfer.action.SEND_FILE_TO_GROUP_CHAT"

    invoke-static {v1}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->newFtAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "chatId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method

.method public static createSendMultipleRequest(Landroid/net/Uri;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v1, "com.samsung.rcs.framework.filetransfer.action.SEND_MULTIPLE"

    invoke-static {v1}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->newFtAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "fpath_array"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object v0
.end method

.method public static deleteSession([J)Landroid/content/Intent;
    .locals 2
    .param p0    # [J

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.DELETE_MESSAGES"

    invoke-static {v1}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->newFtAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sessid_array"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    return-object v0
.end method

.method public static groupChatattachFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    const-string v1, "com.samsung.rcs.framework.filetransfer.action.ATTACH_FILE_TO_GROUP_CHAT"

    invoke-static {v1}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->newFtAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "chatId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static groupChatattachFile(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;
    .locals 2
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # J

    const-string v1, "com.samsung.rcs.framework.filetransfer.action.ATTACH_FILE_TO_GROUP_CHAT"

    invoke-static {v1}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->newFtAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "chatId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "request_session_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method

.method private static newFtAction(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0    # Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.filetransfer.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static newFtAction(Ljava/lang/String;J)Landroid/content/Intent;
    .locals 2
    .param p0    # Ljava/lang/String;
    .param p1    # J

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.filetransfer.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method

.method public static resumeIncomingFile(J)Landroid/content/Intent;
    .locals 2
    .param p0    # J

    const-string v1, "com.samsung.rcs.framework.filetransfer.action.RESUME_INCOMING_FILE"

    invoke-static {v1}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->newFtAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method

.method public static resumeSendingFile(J)Landroid/content/Intent;
    .locals 2
    .param p0    # J

    const-string v1, "com.samsung.rcs.framework.filetransfer.action.RESUME_SENDING_FILE"

    invoke-static {v1}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->newFtAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method

.method public static setFtAutoAcceptInRoaming(Z)Landroid/content/Intent;
    .locals 2
    .param p0    # Z

    const-string v1, "com.samsung.rcs.framework.filetransfer.action.SET_AUTO_ACCEPT_FT_WHILE_IN_ROAMING"

    invoke-static {v1}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->newFtAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "autoAcceptInRoaming"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method
