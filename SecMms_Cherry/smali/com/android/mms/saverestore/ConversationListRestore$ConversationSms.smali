.class Lcom/android/mms/saverestore/ConversationListRestore$ConversationSms;
.super Ljava/lang/Object;
.source "ConversationListRestore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/saverestore/ConversationListRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConversationSms"
.end annotation


# instance fields
.field mAddress:Ljava/lang/String;

.field mDate:Ljava/lang/String;

.field mReadCount:I

.field mText:Ljava/lang/String;

.field mTotalCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationSms;->mAddress:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationSms;->mDate:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationSms;->mText:Ljava/lang/String;

    iput p4, p0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationSms;->mReadCount:I

    iput p5, p0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationSms;->mTotalCount:I

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationSms;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationSms;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getReadCount()I
    .locals 1

    iget v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationSms;->mReadCount:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationSms;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationSms;->mTotalCount:I

    return v0
.end method
