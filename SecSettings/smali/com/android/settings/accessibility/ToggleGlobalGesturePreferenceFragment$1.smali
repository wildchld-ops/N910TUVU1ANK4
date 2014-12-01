.class Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;
.super Ljava/lang/Object;
.source "ToggleGlobalGesturePreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->onInstallActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/accessibility/ToggleSwitch;Z)Z
    .locals 2

    invoke-virtual {p1, p2}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return v0
.end method
