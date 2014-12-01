.class Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$2;
.super Ljava/lang/Object;
.source "HandwritingLanguagePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$2;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.diotek.ime.implement.setting.SWIFTKEY_LANGUAGES_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "handwriting"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$2;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    # getter for: Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->access$100(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
