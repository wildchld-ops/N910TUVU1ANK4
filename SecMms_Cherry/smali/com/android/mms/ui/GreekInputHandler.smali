.class public Lcom/android/mms/ui/GreekInputHandler;
.super Landroid/content/BroadcastReceiver;
.source "GreekInputHandler.java"


# static fields
.field private static final ACTION_RESPONSE_SKPD:Ljava/lang/String; = "inputLanguageAction"

.field private static final ACTION_RESPONSE_SWYPE:Ljava/lang/String; = "com.swype.android.broadcast"

.field private static final KEY_CAPS_STATUS:Ljava/lang/String; = "caps_status"

.field private static final KEY_SKPD_INPUT_LANGUAGE:Ljava/lang/String; = "AxT9IME.inputLanguage"

.field private static final KEY_SWYPE_INPUT_LANGUAGE:Ljava/lang/String; = "swype.inputLanguage"

.field private static final LANGUAGE_ACTION:Ljava/lang/String; = "com.android.mms.LANGUAGE_ACTION"

.field private static final LANGUAGE_GREEK:Ljava/lang/String; = "el"

.field private static SIPLanguage:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/GreekInputHandler"

.field private static isUiVisible:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/android/mms/ui/GreekInputHandler;->SIPLanguage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/mms/ui/GreekInputHandler;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/mms/ui/GreekInputHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-void
.end method

.method public static EncodeGreekCharater(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    if-eqz p0, :cond_0

    const-string v6, "Mms/GreekInputHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "msgText.length() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/mms/ui/GreekInputHandler;->convertGreekCharacter(C)C

    move-result v4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Mms/GreekInputHandler"

    const-string v7, "char temp"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static MappingGreekCharater(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    const/16 v3, 0x41

    goto :goto_1

    :sswitch_1
    const/16 v3, 0x45

    goto :goto_1

    :sswitch_2
    const/16 v3, 0x48

    goto :goto_1

    :sswitch_3
    const/16 v3, 0x49

    goto :goto_1

    :sswitch_4
    const/16 v3, 0x4f

    goto :goto_1

    :sswitch_5
    const/16 v3, 0x59

    goto :goto_1

    :sswitch_6
    const/16 v3, 0x3a9

    goto :goto_1

    :sswitch_7
    const/16 v3, 0x49

    goto :goto_1

    :sswitch_8
    const/16 v3, 0x49

    goto :goto_1

    :sswitch_9
    const/16 v3, 0x59

    goto :goto_1

    :sswitch_a
    const/16 v3, 0x41

    goto :goto_1

    :sswitch_b
    const/16 v3, 0x45

    goto :goto_1

    :sswitch_c
    const/16 v3, 0x48

    goto :goto_1

    :sswitch_d
    const/16 v3, 0x49

    goto :goto_1

    :sswitch_e
    const/16 v3, 0x59

    goto :goto_1

    :sswitch_f
    const/16 v3, 0x49

    goto :goto_1

    :sswitch_10
    const/16 v3, 0x59

    goto :goto_1

    :sswitch_11
    const/16 v3, 0x4f

    goto :goto_1

    :sswitch_12
    const/16 v3, 0x59

    goto :goto_1

    :sswitch_13
    const/16 v3, 0x3a9

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x386 -> :sswitch_0
        0x388 -> :sswitch_1
        0x389 -> :sswitch_2
        0x38a -> :sswitch_3
        0x38c -> :sswitch_4
        0x38e -> :sswitch_5
        0x38f -> :sswitch_6
        0x390 -> :sswitch_7
        0x3aa -> :sswitch_8
        0x3ab -> :sswitch_9
        0x3ac -> :sswitch_a
        0x3ad -> :sswitch_b
        0x3ae -> :sswitch_c
        0x3af -> :sswitch_d
        0x3b0 -> :sswitch_e
        0x3ca -> :sswitch_f
        0x3cb -> :sswitch_10
        0x3cc -> :sswitch_11
        0x3cd -> :sswitch_12
        0x3ce -> :sswitch_13
    .end sparse-switch
.end method

.method private static convertGreekCharacter(C)C
    .locals 1

    move v0, p0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x45

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x50

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x54

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x59

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x49

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x4f

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x41

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x48

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x4b

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x58

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x42

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x4e

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x4d

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x49

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x49

    goto :goto_0

    :pswitch_11
    const/16 v0, 0x59

    goto :goto_0

    :pswitch_12
    const/16 v0, 0x59

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x38a
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_a
        :pswitch_8
        :pswitch_0
        :pswitch_5
        :pswitch_9
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_12
    .end packed-switch
.end method

.method public static convertGreekSmallLetterToCapital(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    move-object v3, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x3b1

    if-lt v2, v5, :cond_1

    const/16 v5, 0x3c9

    if-gt v2, v5, :cond_1

    const/16 v5, 0x3c2

    if-ne v2, v5, :cond_2

    const/16 v2, 0x3a3

    :cond_1
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v2, -0x20

    int-to-char v2, v5

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static isAccentedGerrkCahr(C)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x386 -> :sswitch_0
        0x388 -> :sswitch_0
        0x389 -> :sswitch_0
        0x38a -> :sswitch_0
        0x38c -> :sswitch_0
        0x38e -> :sswitch_0
        0x38f -> :sswitch_0
        0x390 -> :sswitch_0
        0x3aa -> :sswitch_0
        0x3ab -> :sswitch_0
        0x3ac -> :sswitch_0
        0x3ad -> :sswitch_0
        0x3ae -> :sswitch_0
        0x3af -> :sswitch_0
        0x3b0 -> :sswitch_0
        0x3ca -> :sswitch_0
        0x3cb -> :sswitch_0
        0x3cc -> :sswitch_0
        0x3cd -> :sswitch_0
        0x3ce -> :sswitch_0
    .end sparse-switch
.end method

.method public static isGreekInput(C)Z
    .locals 1

    const/16 v0, 0x386

    if-eq v0, p0, :cond_2

    const/16 v0, 0x388

    if-gt v0, p0, :cond_0

    const/16 v0, 0x38a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x38c

    if-gt v0, p0, :cond_1

    const/16 v0, 0x38f

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x3c2

    if-ne v0, p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGreekSmallLetter(C)Z
    .locals 1

    const/16 v0, 0x3b1

    if-gt v0, p0, :cond_0

    const/16 v0, 0x3c9

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSIPGreek()Z
    .locals 3

    const-string v1, "el"

    sget-object v2, Lcom/android/mms/ui/GreekInputHandler;->SIPLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setUpperCase(Z)V
    .locals 6

    :try_start_0
    const-string v3, "Mms/GreekInputHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set upper:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.mms.LANGUAGE_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "caps_status"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private updateCapsStatus()V
    .locals 5

    iget-object v3, p0, Lcom/android/mms/ui/GreekInputHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isBodyFocused()Z

    move-result v1

    iget-object v3, p0, Lcom/android/mms/ui/GreekInputHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isMms()Z

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/GreekInputHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    const-string v3, "el"

    sget-object v4, Lcom/android/mms/ui/GreekInputHandler;->SIPLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/mms/ui/GreekInputHandler;->setUpperCase(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/mms/ui/GreekInputHandler;->setUpperCase(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreate()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "inputLanguageAction"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.swype.android.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/GreekInputHandler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/GreekInputHandler;->isUiVisible:Z

    const-string v0, "Mms/GreekInputHandler"

    const-string v1, "onActivityCreate"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "Mms/GreekInputHandler"

    const-string v1, "onActivityDestroyed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPause()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/GreekInputHandler;->setUpperCase(Z)V

    sput-boolean v0, Lcom/android/mms/ui/GreekInputHandler;->isUiVisible:Z

    const-string v0, "Mms/GreekInputHandler"

    const-string v1, "onActivityResume"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResume()V
    .locals 2

    invoke-direct {p0}, Lcom/android/mms/ui/GreekInputHandler;->updateCapsStatus()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/GreekInputHandler;->isUiVisible:Z

    const-string v0, "Mms/GreekInputHandler"

    const-string v1, "onActivityResume"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v2, "AxT9IME.inputLanguage"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "swype.inputLanguage"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    sput-object v0, Lcom/android/mms/ui/GreekInputHandler;->SIPLanguage:Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_1

    sput-object v1, Lcom/android/mms/ui/GreekInputHandler;->SIPLanguage:Ljava/lang/String;

    :cond_1
    const-string v2, "Mms/GreekInputHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive, skpd lang:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/mms/ui/GreekInputHandler;->isUiVisible:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/GreekInputHandler;->updateCapsStatus()V

    :cond_2
    return-void
.end method

.method public updateCurrentStatus()V
    .locals 2

    invoke-direct {p0}, Lcom/android/mms/ui/GreekInputHandler;->updateCapsStatus()V

    const-string v0, "Mms/GreekInputHandler"

    const-string v1, "updateCurrentStatus"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
