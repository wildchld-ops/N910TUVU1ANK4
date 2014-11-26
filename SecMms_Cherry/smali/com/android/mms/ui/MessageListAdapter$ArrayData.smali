.class Lcom/android/mms/ui/MessageListAdapter$ArrayData;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayData"
.end annotation


# instance fields
.field final mId:J

.field final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .param p1    # J
    .param p3    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/mms/ui/MessageListAdapter$ArrayData;->mId:J

    iput-object p3, p0, Lcom/android/mms/ui/MessageListAdapter$ArrayData;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/mms/ui/MessageListAdapter$ArrayData;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/MessageListAdapter$ArrayData;

    iget-wide v2, p0, Lcom/android/mms/ui/MessageListAdapter$ArrayData;->mId:J

    iget-wide v4, v0, Lcom/android/mms/ui/MessageListAdapter$ArrayData;->mId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter$ArrayData;->mType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter$ArrayData;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
