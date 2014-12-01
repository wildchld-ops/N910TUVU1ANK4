.class Lcom/android/settings/myplace/MyPlaceProfileSettings$17;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep4Dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$17;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$17;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$3100(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$17;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$3102(Lcom/android/settings/myplace/MyPlaceProfileSettings;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$17;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
