.class Lcom/android/incallui/vt/InVTCallMenu$5;
.super Ljava/lang/Object;
.source "InVTCallMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/vt/InVTCallMenu;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/vt/InVTCallMenu;


# direct methods
.method constructor <init>(Lcom/android/incallui/vt/InVTCallMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/vt/InVTCallMenu$5;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/incallui/vt/InVTCallMenu$5;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # getter for: Lcom/android/incallui/vt/InVTCallMenu;->mVideoRecordFailDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/incallui/vt/InVTCallMenu;->access$1200(Lcom/android/incallui/vt/InVTCallMenu;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/InVTCallMenu$5;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # getter for: Lcom/android/incallui/vt/InVTCallMenu;->mVideoRecordFailDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/incallui/vt/InVTCallMenu;->access$1200(Lcom/android/incallui/vt/InVTCallMenu;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/incallui/vt/InVTCallMenu$5;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/vt/InVTCallMenu;->mVideoRecordFailDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/incallui/vt/InVTCallMenu;->access$1202(Lcom/android/incallui/vt/InVTCallMenu;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
