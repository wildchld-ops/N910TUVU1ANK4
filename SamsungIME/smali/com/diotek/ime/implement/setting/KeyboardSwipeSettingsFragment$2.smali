.class Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$2;
.super Ljava/lang/Object;
.source "KeyboardSwipeSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$2;->this$0:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1    # Landroid/preference/Preference;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$2;->this$0:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;

    # invokes: Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->changeSwipe(Landroid/preference/Preference;)V
    invoke-static {v0, p1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->access$000(Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;Landroid/preference/Preference;)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$2;->this$0:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;

    # getter for: Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->access$100(Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    const-string v1, "S009"

    const-string v2, "Continuous input"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
