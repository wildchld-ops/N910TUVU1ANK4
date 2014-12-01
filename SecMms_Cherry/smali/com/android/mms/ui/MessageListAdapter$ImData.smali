.class Lcom/android/mms/ui/MessageListAdapter$ImData;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImData"
.end annotation


# instance fields
.field final mId:J

.field final mServiceType:I

.field final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/mms/ui/MessageListAdapter$ImData;->mId:J

    iput-object p3, p0, Lcom/android/mms/ui/MessageListAdapter$ImData;->mType:Ljava/lang/String;

    iput p4, p0, Lcom/android/mms/ui/MessageListAdapter$ImData;->mServiceType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/mms/ui/MessageListAdapter$ImData;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/MessageListAdapter$ImData;

    iget-wide v2, p0, Lcom/android/mms/ui/MessageListAdapter$ImData;->mId:J

    iget-wide v4, v0, Lcom/android/mms/ui/MessageListAdapter$ImData;->mId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter$ImData;->mType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter$ImData;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/mms/ui/MessageListAdapter$ImData;->mServiceType:I

    iget v3, v0, Lcom/android/mms/ui/MessageListAdapter$ImData;->mServiceType:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
