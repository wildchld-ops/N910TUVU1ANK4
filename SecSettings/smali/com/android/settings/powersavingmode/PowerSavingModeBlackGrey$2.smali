.class Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey$2;
.super Ljava/lang/Object;
.source "PowerSavingModeBlackGrey.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->showPowerSavingHelpComplateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpComplateDialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->access$200(Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
