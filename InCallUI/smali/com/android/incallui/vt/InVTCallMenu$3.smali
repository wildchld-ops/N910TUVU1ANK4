.class Lcom/android/incallui/vt/InVTCallMenu$3;
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

    iput-object p1, p0, Lcom/android/incallui/vt/InVTCallMenu$3;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/vt/InVTCallMenu$3;->this$0:Lcom/android/incallui/vt/InVTCallMenu;

    # getter for: Lcom/android/incallui/vt/InVTCallMenu;->mIsSelectedImage:Z
    invoke-static {v0}, Lcom/android/incallui/vt/InVTCallMenu;->access$400(Lcom/android/incallui/vt/InVTCallMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->selectOutgoingImageFromMyFiles()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->selectVideoFromMyFiles()V

    goto :goto_0
.end method
