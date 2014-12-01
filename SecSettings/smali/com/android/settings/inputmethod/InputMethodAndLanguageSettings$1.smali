.class Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;
.super Landroid/database/ContentObserver;
.source "InputMethodAndLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    # getter for: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandwritingLanguage:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$100(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    # invokes: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSelectLanguage()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$000(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
