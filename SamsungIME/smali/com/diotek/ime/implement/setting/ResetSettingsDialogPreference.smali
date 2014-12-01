.class public Lcom/diotek/ime/implement/setting/ResetSettingsDialogPreference;
.super Lcom/diotek/ime/implement/setting/ResetSettings;
.source "ResetSettingsDialogPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/implement/setting/ResetSettings;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/diotek/ime/implement/setting/ResetSettingsDialogPreference$1;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/setting/ResetSettingsDialogPreference$1;-><init>(Lcom/diotek/ime/implement/setting/ResetSettingsDialogPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
