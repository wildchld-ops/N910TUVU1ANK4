.class Lcom/android/mms/ui/SpamMessageManager$FtExtra;
.super Ljava/lang/Object;
.source "SpamMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SpamMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FtExtra"
.end annotation


# instance fields
.field mChatSessionId:Ljava/lang/String;

.field mContentType:Ljava/lang/String;

.field mDeliveredTime:J

.field mDisplayCounter:I

.field mFileName:Ljava/lang/String;

.field mMessageType:I

.field mRcsDbId:J

.field mRejectReason:I

.field mRemoteUri:Ljava/lang/String;

.field mServiceType:J

.field mUserAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;ILjava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mFileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mContentType:Ljava/lang/String;

    iput p3, p0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mRejectReason:I

    iput-object p4, p0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mChatSessionId:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mRcsDbId:J

    iput-wide p7, p0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mDeliveredTime:J

    iput-object p9, p0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mRemoteUri:Ljava/lang/String;

    iput p10, p0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mMessageType:I

    iput-object p11, p0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mUserAlias:Ljava/lang/String;

    iput p12, p0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mDisplayCounter:I

    iput-wide p13, p0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mServiceType:J

    return-void
.end method
