.class public Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;
.super Landroid/preference/Preference;
.source "PersonalizerPreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityDestroyListener;


# static fields
.field public static final FACEBOOK_TIMESTAMP_UPDATE_ACTION:Ljava/lang/String; = "com.android.action.facbook.timestamp.update"

.field public static final GMAIL_TIMESTAMP_UPDATE_ACTION:Ljava/lang/String; = "com.android.action.gmail.timestamp.update"

.field public static final PERSONALIZERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TWITTER_TIMESTAMP_UPDATE_ACTION:Ljava/lang/String; = "com.android.action.twitter.timestamp.update"

.field public static h:Landroid/os/Handler;


# instance fields
.field private final ID:I

.field ed:Landroid/content/SharedPreferences$Editor;

.field mContactsConnectModule:Lcom/diotek/ime/framework/connect/ContactsConnectModule;

.field mContext:Landroid/content/Context;

.field private mCurrentLocaleString:Ljava/lang/String;

.field private mCurrentTime:Ljava/lang/String;

.field private mDefaultSummary:Ljava/lang/CharSequence;

.field mDialog:Landroid/app/AlertDialog;

.field mFacebookConnectModule:Lcom/diotek/ime/framework/connect/FacebookConnectModule;

.field mGmailConnectModule:Lcom/diotek/ime/framework/connect/GmailConnectModule;

.field mMessagingConnectModule:Lcom/diotek/ime/framework/connect/MessagingConnectModule;

.field mPassword:Ljava/lang/String;

.field mPasswordEdit:Landroid/widget/EditText;

.field private mPrefs:Landroid/content/SharedPreferences;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mTwitterConnectModule:Lcom/diotek/ime/framework/connect/TwitterConnectModule;

.field mUserName:Ljava/lang/String;

.field mUsernameEdit:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->PERSONALIZERS:Ljava/util/HashMap;

    sget-object v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "connect_facebook_enable"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "connect_gmail_enable"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "connect_twitter_enable"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "connect_messaging_enable"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "connect_contacts_enable"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "clear_personalised_data"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->h:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->ID:I

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e023e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentLocaleString:Ljava/lang/String;

    iput-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUsernameEdit:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mPasswordEdit:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUserName:Ljava/lang/String;

    iput-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mPassword:Ljava/lang/String;

    iput-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$1;-><init>(Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->ID:I

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e023e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentLocaleString:Ljava/lang/String;

    iput-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUsernameEdit:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mPasswordEdit:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUserName:Ljava/lang/String;

    iput-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mPassword:Ljava/lang/String;

    iput-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$1;-><init>(Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p1, p2, p3}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;)I
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->ID:I

    return v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentLocaleString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;)V
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-direct {p0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->setUpdatedTime()V

    return-void
.end method

.method private getCurrentTime()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentTime:Ljava/lang/String;

    return-void
.end method

.method private getUpdatedTime()V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->ID:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentTime:Ljava/lang/String;

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "gmail_time"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "facebook_time"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "twitter_time"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "messaging_time"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "contacts_time"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    iput-object p1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    new-instance v1, Lcom/diotek/ime/framework/connect/ContactsConnectModule;

    invoke-direct {v1}, Lcom/diotek/ime/framework/connect/ContactsConnectModule;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mContactsConnectModule:Lcom/diotek/ime/framework/connect/ContactsConnectModule;

    new-instance v1, Lcom/diotek/ime/framework/connect/MessagingConnectModule;

    invoke-direct {v1}, Lcom/diotek/ime/framework/connect/MessagingConnectModule;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mMessagingConnectModule:Lcom/diotek/ime/framework/connect/MessagingConnectModule;

    new-instance v1, Lcom/diotek/ime/framework/connect/GmailConnectModule;

    invoke-direct {v1}, Lcom/diotek/ime/framework/connect/GmailConnectModule;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mGmailConnectModule:Lcom/diotek/ime/framework/connect/GmailConnectModule;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.inputmethod"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->getUpdatedTime()V

    iget-object v1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentTime:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->update(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.action.gmail.timestamp.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.action.facbook.timestamp.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.action.twitter.timestamp.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private launchPersonalizer()V
    .locals 8

    const v7, 0x7f0e021e

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->getCurrentTime()V

    iget v5, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->ID:I

    packed-switch v5, :pswitch_data_0

    const/4 v5, 0x0

    invoke-static {v5}, Ljunit/framework/Assert;->assertTrue(Z)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->checkNetworkStatus()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-class v5, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->isUsingFacebookSSO()Z

    move-result v5

    if-eqz v5, :cond_1

    :try_start_0
    const-string v5, "com.diotek.ime.implement.setting.FacebookSso"

    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aClass.getName() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v5, "com.diotek.ime.implement.setting.FacebookActivity"

    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aClass.getName() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_1
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    sput-object v5, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->h:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->checkNetworkStatus()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_2
    const-class v5, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :try_start_2
    const-string v5, "com.diotek.ime.implement.setting.GMailRequestTokenActivity"

    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aClass.getName() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->checkNetworkStatus()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_3
    const-class v5, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :try_start_3
    const-string v5, "com.diotek.ime.implement.setting.TwitterActivity"

    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aClass.getName() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v5, "bAuthneeded"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_0

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mMessagingConnectModule:Lcom/diotek/ime/framework/connect/MessagingConnectModule;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->update()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentLocaleString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->setUpdatedTime()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v5, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mContactsConnectModule:Lcom/diotek/ime/framework/connect/ContactsConnectModule;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/connect/ContactsConnectModule;->update()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentLocaleString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->setUpdatedTime()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v5, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mContactsConnectModule:Lcom/diotek/ime/framework/connect/ContactsConnectModule;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->resetPersonalizedData()S

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setUpdatedTime()V
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->ed:Landroid/content/SharedPreferences$Editor;

    iget v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->ID:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->ed:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v1, "gmail_time"

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentTime:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v1, "facebook_time"

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentTime:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v1, "twitter_time"

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentTime:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v1, "messaging_time"

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentTime:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v1, "contacts_time"

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentTime:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public checkNetworkStatus()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    return v3
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUsingFacebookSSO()Z
    .locals 12

    const/16 v11, 0xd

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-class v8, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :try_start_0
    const-string v8, "com.diotek.ime.implement.setting.FacebookSso"

    invoke-virtual {v1, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v8, "SNSVersionabove13"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    :try_start_1
    iget-object v8, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.android.app.sns3"

    const/16 v10, 0x80

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lt v8, v11, :cond_0

    const/4 v8, 0x1

    invoke-virtual {v4, v0, v8}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    :goto_0
    return v6

    :cond_0
    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v9, 0xb

    if-lt v8, v9, :cond_1

    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v8, v11, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    :catch_0
    move-exception v2

    move v6, v7

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    move v6, v7

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method isValidEmail(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1    # Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityDestroy()V
    .locals 2

    const-string v0, "SNS"

    const-string v1, "PersonalizerPreference->onActivityDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 0

    invoke-direct {p0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->launchPersonalizer()V

    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 2

    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    const-string v0, "SNS"

    const-string v1, "PersonalizerPreference->onPrepareForRemoval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method showLoginDialog()V
    .locals 6

    const v5, 0x7f0e0251

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f030031

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f08003b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUsernameEdit:Landroid/widget/EditText;

    const v3, 0x7f08003c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mPasswordEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUsernameEdit:Landroid/widget/EditText;

    new-instance v4, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$2;

    invoke-direct {v4, p0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$2;-><init>(Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;

    invoke-direct {v4, p0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;-><init>(Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e01d1

    new-instance v5, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$3;

    invoke-direct {v5, p0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$3;-><init>(Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentLocaleString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->ID:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-eqz p1, :cond_0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    goto :goto_1

    :pswitch_1
    if-eqz p1, :cond_1

    :goto_2
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    goto :goto_2

    :pswitch_2
    if-eqz p1, :cond_2

    :goto_3
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    goto :goto_3

    :pswitch_3
    if-eqz p1, :cond_3

    :goto_4
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    goto :goto_4

    :pswitch_4
    if-eqz p1, :cond_4

    :goto_5
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
