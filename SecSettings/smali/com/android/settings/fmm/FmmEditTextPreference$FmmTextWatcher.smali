.class Lcom/android/settings/fmm/FmmEditTextPreference$FmmTextWatcher;
.super Ljava/lang/Object;
.source "FmmEditTextPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fmm/FmmEditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmmTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/FmmEditTextPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/fmm/FmmEditTextPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fmm/FmmEditTextPreference$FmmTextWatcher;->this$0:Lcom/android/settings/fmm/FmmEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fmm/FmmEditTextPreference;Lcom/android/settings/fmm/FmmEditTextPreference$1;)V
    .locals 0
    .param p1    # Lcom/android/settings/fmm/FmmEditTextPreference;
    .param p2    # Lcom/android/settings/fmm/FmmEditTextPreference$1;

    invoke-direct {p0, p1}, Lcom/android/settings/fmm/FmmEditTextPreference$FmmTextWatcher;-><init>(Lcom/android/settings/fmm/FmmEditTextPreference;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1    # Landroid/text/Editable;

    iget-object v0, p0, Lcom/android/settings/fmm/FmmEditTextPreference$FmmTextWatcher;->this$0:Lcom/android/settings/fmm/FmmEditTextPreference;

    invoke-virtual {v0}, Lcom/android/settings/fmm/FmmEditTextPreference;->setEnableEditBoxBtn()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method
