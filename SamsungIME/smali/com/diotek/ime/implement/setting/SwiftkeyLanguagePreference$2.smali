.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$2;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isWIFIorETHERNETConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadlanguagepack()V
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$300(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->showDownloadGuideDialog()V

    goto :goto_0
.end method
