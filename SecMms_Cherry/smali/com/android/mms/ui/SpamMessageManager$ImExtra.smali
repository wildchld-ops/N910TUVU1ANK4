.class Lcom/android/mms/ui/SpamMessageManager$ImExtra;
.super Ljava/lang/Object;
.source "SpamMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SpamMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImExtra"
.end annotation


# instance fields
.field mContentType:Ljava/lang/String;

.field mDateSent:J

.field mDeliveredTime:J

.field mImdnMessageId:Ljava/lang/String;

.field mRcsDbId:J

.field mRemoteUri:Ljava/lang/String;

.field mServiceType:J

.field mUserAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V
    .locals 0
    .param p1    # J
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # J
    .param p7    # Ljava/lang/String;
    .param p8    # J
    .param p10    # Ljava/lang/String;
    .param p11    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/mms/ui/SpamMessageManager$ImExtra;->mDateSent:J

    iput-object p3, p0, Lcom/android/mms/ui/SpamMessageManager$ImExtra;->mContentType:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/ui/SpamMessageManager$ImExtra;->mImdnMessageId:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/mms/ui/SpamMessageManager$ImExtra;->mRcsDbId:J

    iput-object p7, p0, Lcom/android/mms/ui/SpamMessageManager$ImExtra;->mUserAlias:Ljava/lang/String;

    iput-wide p8, p0, Lcom/android/mms/ui/SpamMessageManager$ImExtra;->mDeliveredTime:J

    iput-object p10, p0, Lcom/android/mms/ui/SpamMessageManager$ImExtra;->mRemoteUri:Ljava/lang/String;

    iput-wide p11, p0, Lcom/android/mms/ui/SpamMessageManager$ImExtra;->mServiceType:J

    return-void
.end method
