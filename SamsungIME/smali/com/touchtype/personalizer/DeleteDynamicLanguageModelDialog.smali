.class public Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;
.super Landroid/preference/DialogPreference;
.source "DeleteDynamicLanguageModelDialog.java"


# instance fields
.field private mSettings:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mSettings:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    const-string v0, "Configuration has not been set"

    iget-object v1, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mSettings:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mSettings:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->clearUserModel()V

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public setConfiguration(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mSettings:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    return-void
.end method
