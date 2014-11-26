.class Lcom/android/mms/ui/ReservationMessageManager$ModeCallback$2;
.super Ljava/lang/Object;
.source "ReservationMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

.field final synthetic val$messageOptions:Lcom/android/mms/ui/MessageOptions;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback$2;->this$1:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    iput-object p2, p0, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback$2;->val$messageOptions:Lcom/android/mms/ui/MessageOptions;

    iput-object p3, p0, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback$2;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback$2;->val$messageOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback$2;->val$messageOptions:Lcom/android/mms/ui/MessageOptions;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback$2;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Z)V

    :cond_0
    return-void
.end method
