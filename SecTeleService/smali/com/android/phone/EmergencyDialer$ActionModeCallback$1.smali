.class Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;
.super Ljava/lang/Object;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyDialer$ActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer$ActionModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$1400(Lcom/android/phone/EmergencyDialer;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    return-void
.end method
