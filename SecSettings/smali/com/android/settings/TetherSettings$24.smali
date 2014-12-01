.class Lcom/android/settings/TetherSettings$24;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->createHelpStep0Dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TetherSettings$24;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/TetherSettings$24;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mHelpStep0Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$2400(Lcom/android/settings/TetherSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/TetherSettings$24;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/TetherSettings;->mHelpStep0Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->access$2402(Lcom/android/settings/TetherSettings;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;

    iget-object v0, p0, Lcom/android/settings/TetherSettings$24;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/TetherSettings;->mHelpDialogNotShow:Z
    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->access$2502(Lcom/android/settings/TetherSettings;Z)Z

    return-void
.end method
