.class final Lcom/android/mms/ui/FontSizeController$1;
.super Ljava/lang/Object;
.source "FontSizeController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FontSizeController;->showFontSizeSettingDialog(Landroid/content/Context;Lcom/android/mms/ui/FontSizeController$OnFontSizeSettingChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/android/mms/ui/FontSizeController$OnFontSizeSettingChangedListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/FontSizeController$OnFontSizeSettingChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/FontSizeController$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/FontSizeController$1;->val$listener:Lcom/android/mms/ui/FontSizeController$OnFontSizeSettingChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v1, p0, Lcom/android/mms/ui/FontSizeController$1;->val$context:Landroid/content/Context;

    const-string v2, "FOTN"

    invoke-static {v1, v2}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/mms/ui/FontSizeController;->nameOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/FontSizeController$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setFontSizeName(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/FontSizeController$1;->val$listener:Lcom/android/mms/ui/FontSizeController$OnFontSizeSettingChangedListener;

    invoke-interface {v1}, Lcom/android/mms/ui/FontSizeController$OnFontSizeSettingChangedListener;->onFontSizeSettingChanged()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
