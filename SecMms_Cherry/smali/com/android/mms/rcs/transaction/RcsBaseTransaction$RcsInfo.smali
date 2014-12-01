.class public Lcom/android/mms/rcs/transaction/RcsBaseTransaction$RcsInfo;
.super Ljava/lang/Object;
.source "RcsBaseTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/transaction/RcsBaseTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RcsInfo"
.end annotation


# instance fields
.field mChatId:Ljava/lang/String;

.field mMediaUri:Landroid/net/Uri;

.field mMessageBody:Ljava/lang/String;

.field mRcsId:J

.field mRcsUri:Landroid/net/Uri;

.field mRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/rcs/transaction/RcsBaseTransaction;


# direct methods
.method public constructor <init>(Lcom/android/mms/rcs/transaction/RcsBaseTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$RcsInfo;->this$0:Lcom/android/mms/rcs/transaction/RcsBaseTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChatId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$RcsInfo;->mChatId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$RcsInfo;->mMediaUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$RcsInfo;->mMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public getRcsId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$RcsInfo;->mRcsId:J

    return-wide v0
.end method

.method public getRcsUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$RcsInfo;->mRcsUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRecipients()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$RcsInfo;->mRecipients:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setChatId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$RcsInfo;->mChatId:Ljava/lang/String;

    return-void
.end method

.method public setMediaUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$RcsInfo;->mMediaUri:Landroid/net/Uri;

    return-void
.end method

.method public setMessageBody(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$RcsInfo;->mMessageBody:Ljava/lang/String;

    return-void
.end method

.method public setRcsId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$RcsInfo;->mRcsId:J

    return-void
.end method

.method public setRcsUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$RcsInfo;->mRcsUri:Landroid/net/Uri;

    return-void
.end method

.method public setRecipients(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$RcsInfo;->mRecipients:Ljava/util/ArrayList;

    return-void
.end method
