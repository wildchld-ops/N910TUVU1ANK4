.class Lcom/android/mms/data/Conversation$Cache$SortLastestThreads;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Conversation$Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SortLastestThreads"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    move-object v0, p1

    check-cast v0, Lcom/android/mms/data/Conversation;

    move-object v1, p2

    check-cast v1, Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->signum(J)I

    move-result v2

    return v2
.end method
