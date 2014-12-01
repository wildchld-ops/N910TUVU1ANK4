.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;
.super Lcom/touchtype_fluency/util/ProgressListener;
.source "SwiftkeyLanguagePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
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

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/ProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v0

    new-instance v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;

    invoke-direct {v1, p0, p1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(II)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v0

    new-instance v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$1;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
