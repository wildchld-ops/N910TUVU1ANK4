.class Lcom/android/settings/nfc/SBeam$3;
.super Ljava/lang/Object;
.source "SBeam.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/SBeam;->createHelpStep2Dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/SBeam;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/SBeam;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/SBeam$3;->this$0:Lcom/android/settings/nfc/SBeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam$3;->this$0:Lcom/android/settings/nfc/SBeam;

    # getter for: Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0}, Lcom/android/settings/nfc/SBeam;->access$300(Lcom/android/settings/nfc/SBeam;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam$3;->this$0:Lcom/android/settings/nfc/SBeam;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0, v1}, Lcom/android/settings/nfc/SBeam;->access$302(Lcom/android/settings/nfc/SBeam;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/nfc/SBeam;->block_HelpStep2:Z

    return-void
.end method
