.class Lcom/android/mms/ui/FwdMsgIdentifier;
.super Ljava/lang/Object;
.source "CombineForwardMessage.java"


# static fields
.field public static final MSG_TYPE_MMS:I = 0x2

.field public static final MSG_TYPE_NONE:I = -0x1

.field public static final MSG_TYPE_SMS:I = 0x1

.field public static final MSG_TYPE_WPM:I = 0x3


# instance fields
.field private msgId:J

.field private msgType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/FwdMsgIdentifier;->msgId:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/FwdMsgIdentifier;->msgType:I

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0
    .param p1    # J
    .param p3    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/mms/ui/FwdMsgIdentifier;->msgId:J

    iput p3, p0, Lcom/android/mms/ui/FwdMsgIdentifier;->msgType:I

    return-void
.end method


# virtual methods
.method public getMsgId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/FwdMsgIdentifier;->msgId:J

    return-wide v0
.end method

.method public getMsgType()I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/FwdMsgIdentifier;->msgType:I

    return v0
.end method

.method public setMsgId(J)V
    .locals 0
    .param p1    # J

    iput-wide p1, p0, Lcom/android/mms/ui/FwdMsgIdentifier;->msgId:J

    return-void
.end method

.method public setMsgType(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/mms/ui/FwdMsgIdentifier;->msgType:I

    return-void
.end method
