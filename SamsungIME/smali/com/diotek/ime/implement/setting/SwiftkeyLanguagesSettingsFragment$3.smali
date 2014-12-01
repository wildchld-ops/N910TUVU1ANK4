.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$3;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$100()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$000(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->rebuildLanguageList()V

    return-void
.end method
