.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$1;
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

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$1;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$1;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    const/4 v1, 0x0

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->showDownloadingState(Z)V
    invoke-static {v0, v1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$000(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$1;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    const/4 v1, -0x1

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBarComplete(I)V
    invoke-static {v0, v1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$1;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelDownload()V
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$200(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    return-void
.end method
