.class Lcom/diotek/ime/implement/setting/ResetSettingsDialogPreference$1;
.super Ljava/lang/Object;
.source "ResetSettingsDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/ResetSettingsDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/ResetSettingsDialogPreference;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/ResetSettingsDialogPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ResetSettingsDialogPreference$1;->this$0:Lcom/diotek/ime/implement/setting/ResetSettingsDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ResetSettingsDialogPreference$1;->this$0:Lcom/diotek/ime/implement/setting/ResetSettingsDialogPreference;

    invoke-virtual {v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->resetAll()V

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ResetSettingsDialogPreference$1;->this$0:Lcom/diotek/ime/implement/setting/ResetSettingsDialogPreference;

    iget-object v1, v1, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setNeedToHideKeyboard(Z)V

    const-class v1, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->openInputMethodSetting(Ljava/lang/Class;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
