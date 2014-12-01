.class public Lcom/android/mms/ui/MessageSkinFakeItem;
.super Ljava/lang/Object;
.source "MessageSkinFakeItem.java"


# instance fields
.field public mIsNew:Z

.field public mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageSkinFakeItem;->mText:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageSkinFakeItem;->mIsNew:Z

    iput-object p1, p0, Lcom/android/mms/ui/MessageSkinFakeItem;->mText:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/mms/ui/MessageSkinFakeItem;->mIsNew:Z

    return-void
.end method
