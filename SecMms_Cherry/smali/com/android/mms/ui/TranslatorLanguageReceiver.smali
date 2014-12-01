.class public Lcom/android/mms/ui/TranslatorLanguageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TranslatorLanguageReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/TranslatorLanguageReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v2, "com.sec.android.app.translator.GET_SUPPORTED_LANGUAGES_RESULT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "caller"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "supported_languages"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "Mms/TranslatorLanguageReceiver"

    const-string v3, "GET_SUPPORTED_LANGUAGES_RESULT returns null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Lcom/android/mms/ui/TranslateManager;->setTranslateSupportedLanguages(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method
