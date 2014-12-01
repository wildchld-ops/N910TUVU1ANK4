.class Lcom/android/mms/ui/ReservationMessageManager$ModeCallback$3;
.super Ljava/lang/Object;
.source "ReservationMessageManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback$3;->this$1:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback$3;->this$1:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/ui/ReservationMessageManager;->access$1400(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback$3;->this$1:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/ui/ReservationMessageManager;->access$1400(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method
