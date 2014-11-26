.class Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;
.super Ljava/lang/Object;
.source "SpamMessageManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SpamMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreMessageListener"
.end annotation


# instance fields
.field private final mRestoreUri:Landroid/net/Uri;

.field private final mRestoremsgItem:Lcom/android/mms/ui/MessageItem;

.field final synthetic this$0:Lcom/android/mms/ui/SpamMessageManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SpamMessageManager;Landroid/net/Uri;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .param p2    # Landroid/net/Uri;
    .param p3    # Lcom/android/mms/ui/MessageItem;

    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoreUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Landroid/net/Uri;
    .locals 1
    .param p0    # Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoreUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .param p0    # Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;-><init>(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
