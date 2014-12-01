.class Lcom/android/settings/OneHandInteractionAreaFragment$3;
.super Ljava/lang/Object;
.source "OneHandInteractionAreaFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OneHandInteractionAreaFragment;->showMagnificationDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OneHandInteractionAreaFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/OneHandInteractionAreaFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/OneHandInteractionAreaFragment$3;->this$0:Lcom/android/settings/OneHandInteractionAreaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/OneHandInteractionAreaFragment$3;->this$0:Lcom/android/settings/OneHandInteractionAreaFragment;

    # getter for: Lcom/android/settings/OneHandInteractionAreaFragment;->mSamsungKeypad:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/OneHandInteractionAreaFragment;->access$000(Lcom/android/settings/OneHandInteractionAreaFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/OneHandInteractionAreaFragment$3;->this$0:Lcom/android/settings/OneHandInteractionAreaFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_samsungkeypad_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
