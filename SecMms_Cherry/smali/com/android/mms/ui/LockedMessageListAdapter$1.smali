.class Lcom/android/mms/ui/LockedMessageListAdapter$1;
.super Ljava/util/LinkedHashMap;
.source "LockedMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/LockedMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/Long;",
        "Lcom/android/mms/ui/BaseMessageItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/LockedMessageListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/LockedMessageListAdapter;IFZ)V
    .locals 0
    .param p2    # I
    .param p3    # F
    .param p4    # Z

    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageListAdapter$1;->this$0:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .param p1    # Ljava/util/Map$Entry;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
