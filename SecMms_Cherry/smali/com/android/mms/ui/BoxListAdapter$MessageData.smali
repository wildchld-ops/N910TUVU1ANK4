.class Lcom/android/mms/ui/BoxListAdapter$MessageData;
.super Ljava/lang/Object;
.source "BoxListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageData"
.end annotation


# instance fields
.field private mId:J

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mId:J

    iput-object p3, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(JLjava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mType:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/BoxListAdapter$MessageData;

    iget-wide v2, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mId:J

    iget-wide v4, v0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setData(JLjava/lang/String;)V
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mId:J

    iput-object p3, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mType:Ljava/lang/String;

    return-void
.end method
