.class public Lcom/diotek/ime/framework/util/CSCReadAndSet;
.super Ljava/lang/Object;
.source "CSCReadAndSet.java"


# static fields
.field public static final CSC_LANGUAGE_SEPERATOR:Ljava/lang/String; = "_"

.field public static final CSC_LIST_SEPERATOR:Ljava/lang/String; = ";"

.field private static final CUSTOMER_PATH:Ljava/lang/String; = "/system/csc/"

.field private static final CUSTOMER_XML:Ljava/lang/String; = "customer.xml"

.field public static DEFAULT_ENABLE_LANGUAGE_LIST:Ljava/lang/String; = null

.field private static final LANGUAGE_XML:Ljava/lang/String; = "language.xml"

.field private static final PREFS_PATH:Ljava/lang/String; = "/data/data/com.sec.android.inputmethod/shared_prefs/com.sec.android.inputmethod_preferences.xml"

.field public static final PREF_SAMSUNG_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod_preferences"

.field private static final TAG_CUSTOMER_ROOT:Ljava/lang/String; = "Settings"

.field private static final TAG_DA_SELECT_UMLAUT_LANGUAGES:Ljava/lang/String; = "EnableUmlautList"

.field private static final TAG_DA_SUPPORT_UMLAUT_LANGUAGES:Ljava/lang/String; = "SupportUmlautList"

.field private static final TAG_ENABLE_LANG_LIST:Ljava/lang/String; = "EnableList"

.field private static final TAG_INPUT:Ljava/lang/String; = "Input"

.field private static final TAG_KEYPAD_TYPE:Ljava/lang/String; = "KeypadType"

.field private static final TAG_LANGUAGE_ROOT:Ljava/lang/String; = "LanguageSet"

.field private static final TAG_MAIN:Ljava/lang/String; = "Main"

.field private static final TAG_PHONE:Ljava/lang/String; = "Phone"

.field private static final TAG_RECOGNITION_TIME:Ljava/lang/String; = "HWR_RECOGNITION_TIME"

.field private static final TAG_RECOGNITION_TYPE:Ljava/lang/String; = "HWR_RECOGNITION_TYPE"

.field private static final TAG_SUPPORT_HWR_MODE:Ljava/lang/String; = "SUPPORT_HWR_MODE"

.field private static final TAG_SUPPORT_LANG_LIST:Ljava/lang/String; = "SupportList"

.field private static final TAG_USE_AUTO_APPEND:Ljava/lang/String; = "AUTO_APPEND"

.field private static final TAG_USE_AUTO_CAPS:Ljava/lang/String; = "AUTO_CAPITALIZATION"

.field private static final TAG_USE_AUTO_PERIOD:Ljava/lang/String; = "DOUBLESPACE"

.field private static final TAG_USE_AUTO_REPLACEMENT:Ljava/lang/String; = "AutoReplacement"

.field private static final TAG_USE_AUTO_SPACING:Ljava/lang/String; = "AUTO_SPACING"

.field private static final TAG_USE_AUTO_SUBSTITUTION:Ljava/lang/String; = "AUTO_SUBTITUTION"

.field private static final TAG_USE_CHARACTER_PREVIEW:Ljava/lang/String; = "CHARACTER_PREVIEW"

.field private static final TAG_USE_CONTINUOUS_INPUT:Ljava/lang/String; = "ContinuousInput"

.field private static final TAG_USE_HWR:Ljava/lang/String; = "HWR_ENABLED"

.field private static final TAG_USE_KEYPAD_FLICK:Ljava/lang/String; = "KEYPAD_FLICK"

.field private static final TAG_USE_KEYPAD_POINTING:Ljava/lang/String; = "KEYPAD_POINTING"

.field private static final TAG_USE_KEYPAD_SWEEPING:Ljava/lang/String; = "KEYPAD_SWEEPING"

.field private static final TAG_USE_KEYPRESS_HAPTIC:Ljava/lang/String; = "VIBRATE_ON"

.field private static final TAG_USE_KEYPRESS_SOUND:Ljava/lang/String; = "SOUND_ON"

.field private static final TAG_USE_NEXT_WORD_PREDICTION:Ljava/lang/String; = "NEXT_WORD_PREDICTION"

.field private static final TAG_USE_RECAPTURE:Ljava/lang/String; = "RECAPTURE"

.field private static final TAG_USE_REGIONAL_CORRECTION:Ljava/lang/String; = "REGIONAL_CORRECTION"

.field private static final TAG_USE_SPELL_CORRECTION:Ljava/lang/String; = "SPELL_CORRECTION"

.field private static final TAG_USE_VOICE_INPUT:Ljava/lang/String; = "VOICE_INPUT"

.field private static final TAG_USE_WORD_COMPLETION:Ljava/lang/String; = "WORD_COMPLETION"

.field private static final TAG_USE_XT9:Ljava/lang/String; = "T9Enabling"

.field private static final TAG_WORD_COMPLETION_POINT:Ljava/lang/String; = "WORD_COMPLETION_POINT"

.field private static mDoc:Lorg/w3c/dom/Document;

.field private static mNode:Lorg/w3c/dom/Node;

.field private static mRoot:Lorg/w3c/dom/Node;

.field private static sInstance:Lcom/diotek/ime/framework/util/CSCReadAndSet;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCscVal_DaLanguage:Ljava/lang/String;

.field private mCscVal_DaSelectUmlautLanguageList:Ljava/lang/String;

.field private mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

.field private mCscVal_EnableLanguageListOnLanguageXml:Ljava/lang/String;

.field private mCscVal_KeypadType:Ljava/lang/String;

.field private mCscVal_RecognitionTime:Ljava/lang/String;

.field private mCscVal_RecognitionType:Ljava/lang/String;

.field private mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

.field private mCscVal_WordCompletionPoint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->sInstance:Lcom/diotek/ime/framework/util/CSCReadAndSet;

    const-string v0, ""

    sput-object v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->DEFAULT_ENABLE_LANGUAGE_LIST:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomerPref()Z
    .locals 4

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.sec.android.inputmethod/shared_prefs/com.sec.android.inputmethod_preferences.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v2, :cond_1

    const-string v2, "SamsungIME"

    const-string v3, "Preference file doesn\'t exist."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/diotek/ime/framework/util/CSCReadAndSet;
    .locals 2

    const-class v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->sInstance:Lcom/diotek/ime/framework/util/CSCReadAndSet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;

    invoke-direct {v0}, Lcom/diotek/ime/framework/util/CSCReadAndSet;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->sInstance:Lcom/diotek/ime/framework/util/CSCReadAndSet;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->sInstance:Lcom/diotek/ime/framework/util/CSCReadAndSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 8

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v0, v4

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v5, :cond_3

    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Node getTagNode(Node parent, String tagName)  tagName =["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_6

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v5, :cond_4

    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "          ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move-object v0, v4

    goto :goto_0
.end method

.method private getTagValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    sget-object v3, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mNode:Lorg/w3c/dom/Node;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v3, :cond_2

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String getTagValue(String tagFullName)  tagFullName =["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v3, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mNode:Lorg/w3c/dom/Node;

    invoke-direct {p0, v3, p1}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getTagValueReturnBoolean(Ljava/lang/String;Z)Z
    .locals 5

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v2, :cond_2

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "boolean getTagValueReturnBoolean(String tagFullName, boolean defValue)  tagFullName =["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]  defValue = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, p2

    const-string v2, "enable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "disable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v1, :cond_3

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boolean getTagValueReturnString(String tagFullName, String defValue)  tagFullName =["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]  defValue = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p2, v0

    goto :goto_0
.end method

.method private loadXMLFile(Ljava/lang/String;)V
    .locals 10

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/system/csc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v7

    sput-object v7, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mDoc:Lorg/w3c/dom/Document;

    sget-object v7, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mDoc:Lorg/w3c/dom/Document;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v7, :cond_2

    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDoc\'s name = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v9}, Lorg/w3c/dom/Document;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v7, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    sput-object v7, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mRoot:Lorg/w3c/dom/Node;

    sget-object v7, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mRoot:Lorg/w3c/dom/Node;

    if-eqz v7, :cond_0

    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v7, :cond_3

    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mRoot\'s name = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mRoot:Lorg/w3c/dom/Node;

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v7, 0x3

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Settings"

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const-string v8, "Main"

    aput-object v8, v1, v7

    const/4 v7, 0x2

    const-string v8, "Phone"

    aput-object v8, v1, v7

    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "LanguageSet"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "Input"

    aput-object v8, v4, v7

    const-string v7, "customer.xml"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v6, v1

    :goto_1
    sget-object v7, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mRoot:Lorg/w3c/dom/Node;

    sput-object v7, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mNode:Lorg/w3c/dom/Node;

    const/4 v5, 0x0

    :goto_2
    array-length v7, v6

    if-ge v5, v7, :cond_6

    sget-object v7, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mNode:Lorg/w3c/dom/Node;

    aget-object v8, v6, v5

    invoke-direct {p0, v7, v8}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    sput-object v7, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mNode:Lorg/w3c/dom/Node;

    sget-object v7, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mNode:Lorg/w3c/dom/Node;

    if-nez v7, :cond_5

    const-string v7, "SamsungIME"

    const-string v8, "loadXMLFile() : null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v7, :cond_0

    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ParserConfigurationException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    move-object v6, v4

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    :try_start_1
    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v7, :cond_0

    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mNode\'s name = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mNode:Lorg/w3c/dom/Node;

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v2

    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v7, :cond_0

    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SAXException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v2

    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v7, :cond_0

    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " But, This is normal operation. That\'s OK. :)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public setCustomerCSC(Landroid/content/Context;Z)V
    .locals 34

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string v31, "com.sec.android.inputmethod_preferences"

    const/16 v32, 0x3

    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    if-nez v23, :cond_1

    sget-boolean v30, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v30, :cond_0

    const-string v30, "SamsungIME"

    const-string v31, "getSharedPreferences() error"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    if-nez v6, :cond_2

    sget-boolean v30, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v30, :cond_0

    const-string v30, "SamsungIME"

    const-string v31, "edit() error"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_Sip_DisableMultiInputLanuage"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    const-string v30, "da_mode"

    move-object/from16 v0, v30

    invoke-interface {v6, v0, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    const-string v30, "language.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->loadXMLFile(Ljava/lang/String;)V

    const-string v30, "SupportList"

    const-string v31, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v27, 0x0

    const/16 v28, 0x0

    if-eqz v22, :cond_3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    :cond_3
    const-string v30, "SupportList"

    const-string v31, "EN_GB"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    :cond_4
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_d

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_d

    if-eqz v11, :cond_c

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaLanguage:Ljava/lang/String;

    :cond_5
    :goto_1
    const-string v30, "EnableList"

    const-string v31, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_6

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    :cond_6
    const-string v30, "EnableList"

    const-string v31, "EN_GB"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_7

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    :cond_7
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    if-nez v11, :cond_8

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_EnableLanguageListOnLanguageXml:Ljava/lang/String;

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_f

    const-string v30, "support_languages"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    new-instance v24, Ljava/util/StringTokenizer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, ";"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v30

    if-eqz v30, :cond_f

    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_9

    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v10, v0, :cond_e

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    add-int/lit8 v30, v10, 0x1

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    if-eqz v16, :cond_a

    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    :cond_a
    if-eqz v18, :cond_b

    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    :cond_b
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    const-string v30, "0x%08x"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v6, v13, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    goto :goto_2

    :cond_c
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    if-eqz p2, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v19

    if-eqz v19, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getDefaultSupportLanguages()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    const-string v30, "0x%08x"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v6, v13, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_EnableLanguageListOnLanguageXml:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_16

    new-instance v9, Ljava/util/StringTokenizer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_EnableLanguageListOnLanguageXml:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, ";"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v9, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :cond_10
    :goto_3
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v30

    if-eqz v30, :cond_15

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_10

    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v10, v0, :cond_13

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    add-int/lit8 v30, v10, 0x1

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    if-eqz v16, :cond_11

    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    :cond_11
    if-eqz v18, :cond_12

    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    :cond_12
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    const-string v30, "0x%08x"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-interface {v6, v13, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :goto_4
    const-string v30, ";"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_13
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    const-string v30, "0x%08x"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-interface {v6, v13, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    const-string v30, "iw"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_14

    const-string v29, "he"

    :cond_14
    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v30, "_"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v29 .. v29}, Lcom/diotek/ime/framework/common/LanguageID;->getCountryCodeOfLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_15
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sput-object v30, Lcom/diotek/ime/framework/util/CSCReadAndSet;->DEFAULT_ENABLE_LANGUAGE_LIST:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "handwriting_language_list"

    sget-object v32, Lcom/diotek/ime/framework/util/CSCReadAndSet;->DEFAULT_ENABLE_LANGUAGE_LIST:Ljava/lang/String;

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_16
    if-eqz v11, :cond_2a

    const-string v30, "SupportUmlautList"

    const-string v31, "DE"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_17

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    :cond_17
    const-string v30, "SupportUmlautList"

    const-string v31, "EN_GB"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_18

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    :cond_18
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_19

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

    :cond_19
    const-string v30, "EnableUmlautList"

    const-string v31, "DE"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_1a

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    :cond_1a
    const-string v30, "EnableUmlautList"

    const-string v31, "EN_GB"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_1b

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    :cond_1b
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1c

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSelectUmlautLanguageList:Ljava/lang/String;

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaLanguage:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1f

    new-instance v3, Ljava/util/StringTokenizer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaLanguage:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, ";"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v3, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v30

    if-eqz v30, :cond_1f

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_1f

    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v10, v0, :cond_23

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    add-int/lit8 v30, v10, 0x1

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    if-eqz v16, :cond_1d

    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    :cond_1d
    if-eqz v18, :cond_1e

    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    :cond_1e
    const-string v30, "da_language"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    const-string v30, "language.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->loadXMLFile(Ljava/lang/String;)V

    :cond_1f
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_25

    const-string v30, "SamsungIME"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "mCscVal_DaSupportUmlautLanguageList : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v30, "support_languages"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    new-instance v4, Ljava/util/StringTokenizer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, ";"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v4, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    :goto_6
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v30

    if-eqz v30, :cond_25

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_20

    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v10, v0, :cond_24

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    add-int/lit8 v30, v10, 0x1

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    if-eqz v16, :cond_21

    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    :cond_21
    if-eqz v18, :cond_22

    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    :cond_22
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    const-string v30, "0x%08x"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v6, v13, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    goto :goto_6

    :cond_23
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "da_language"

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    goto/16 :goto_5

    :cond_24
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    const-string v30, "0x%08x"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v6, v13, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    goto/16 :goto_6

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSelectUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2a

    const-string v30, "SamsungIME"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "mCscVal_DaSelectUmlautLanguageList : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSelectUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/util/StringTokenizer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSelectUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, ";"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v9, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_26
    :goto_7
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v30

    if-eqz v30, :cond_2a

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_26

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v10, v0, :cond_29

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    add-int/lit8 v30, v10, 0x1

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    if-eqz v16, :cond_27

    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    :cond_27
    if-eqz v18, :cond_28

    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    :cond_28
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    const-string v30, "0x%08x"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-interface {v6, v13, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    goto :goto_7

    :cond_29
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    const-string v30, "0x%08x"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-interface {v6, v13, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    goto/16 :goto_7

    :cond_2a
    const-string v30, "customer.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->loadXMLFile(Ljava/lang/String;)V

    const-string v30, "KeypadType"

    const-string v31, "3X4"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_2b

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    :cond_2b
    const-string v30, "KeypadType"

    const-string v31, "QWERTY"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_2c

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    :cond_2c
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2d

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_KeypadType:Ljava/lang/String;

    :cond_2d
    const-string v30, "WORD_COMPLETION_POINT"

    const-string v31, "2"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_2e

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    :cond_2e
    const-string v30, "WORD_COMPLETION_POINT"

    const-string v31, "3"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_2f

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    :cond_2f
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_30

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_WordCompletionPoint:Ljava/lang/String;

    :cond_30
    const-string v30, "HWR_RECOGNITION_TIME"

    const-string v31, "500ms"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_31

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    :cond_31
    const-string v30, "HWR_RECOGNITION_TIME"

    const-string v31, "200ms"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_32

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    :cond_32
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_33

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    :cond_33
    const-string v30, "HWR_RECOGNITION_TYPE"

    const-string v31, "COMPLETE"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_34

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    :cond_34
    const-string v30, "HWR_RECOGNITION_TYPE"

    const-string v31, "STROKE"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_35

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    :cond_35
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_36

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionType:Ljava/lang/String;

    :cond_36
    const-string v30, "T9Enabling"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "T9Enabling"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_37

    const-string v30, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v30, "SETTINGS_DEFAULT_FOREIGN_PREDICTION_ON"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_37
    const-string v30, "HWR_ENABLED"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "HWR_ENABLED"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_38

    const-string v30, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_38
    const-string v30, "KEYPAD_SWEEPING"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "KEYPAD_SWEEPING"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_39

    const-string v30, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_39
    const-string v30, "KEYPAD_POINTING"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "KEYPAD_POINTING"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_3a

    const-string v30, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_3a
    const-string v30, "KEYPAD_FLICK"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "KEYPAD_FLICK"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_3b

    const-string v30, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_3b
    const-string v30, "AUTO_CAPITALIZATION"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "AUTO_CAPITALIZATION"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_3c

    const-string v30, "SETTINGS_DEFAULT_AUTO_CAPS"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_3c
    const-string v30, "AUTO_SPACING"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "AUTO_SPACING"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_3d

    const-string v30, "SETTINGS_DEFAULT_AUTO_SPACING"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_3d
    const-string v30, "VOICE_INPUT"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "VOICE_INPUT"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_3e

    const-string v30, "SETTINGS_DEFAULT_VOICE_INPUT"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_3e
    const-string v30, "DOUBLESPACE"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "DOUBLESPACE"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_3f

    const-string v30, "SETTINGS_DEFAULT_AUTO_PERIOD"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_3f
    const-string v30, "CHARACTER_PREVIEW"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "CHARACTER_PREVIEW"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_40

    const-string v30, "SETTINGS_DEFAULT_USE_PREVIEW"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_40
    const-string v30, "VIBRATE_ON"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "VIBRATE_ON"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_41

    const-string v30, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_41
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v30

    const-string v31, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_VIBETONZ"

    invoke-virtual/range {v30 .. v31}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_42

    const-string v30, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_42
    const-string v30, "SOUND_ON"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "SOUND_ON"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_43

    const-string v30, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    if-eqz v26, :cond_53

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "sip_key_feedback_sound"

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_43
    :goto_8
    const-string v30, "WORD_COMPLETION"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "WORD_COMPLETION"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_44

    const-string v30, "SETTINGS_DEFAULT_WORDCOMPLETION"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    if-eqz v26, :cond_54

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "sip_key_feedback_vibration"

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_44
    :goto_9
    const-string v30, "ContinuousInput"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "ContinuousInput"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_45

    const-string v30, "SETTINGS_DEFAULT_TRACE"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_45
    const-string v30, "SPELL_CORRECTION"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "SPELL_CORRECTION"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_46

    const-string v30, "SETTINGS_DEFAULT_SPELLCORRECTION"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_46
    const-string v30, "NEXT_WORD_PREDICTION"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "NEXT_WORD_PREDICTION"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_47

    const-string v30, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_47
    const-string v30, "AUTO_APPEND"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "AUTO_APPEND"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_48

    const-string v30, "SETTINGS_DEFAULT_AUTOAPPEND"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_48
    const-string v30, "AUTO_SUBTITUTION"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "AUTO_SUBTITUTION"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_49

    const-string v30, "SETTINGS_DEFAULT_AUTOSUBSTITUTION"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_49
    const-string v30, "REGIONAL_CORRECTION"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "REGIONAL_CORRECTION"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_4a

    const-string v30, "SETTINGS_DEFAULT_REGIONALCORRECTION"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_4a
    const-string v30, "RECAPTURE"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "RECAPTURE"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_4b

    const-string v30, "SETTINGS_DEFAULT_RECAPTURE"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_4b
    const-string v30, "SUPPORT_HWR_MODE"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "SUPPORT_HWR_MODE"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_4c

    const-string v30, "support_hwr_mode"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_4c
    const-string v30, "NONE"

    const-string v31, "VOHWRPANEL"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4d

    const-string v30, "support_hwr_mode"

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_4d
    const-string v30, "AutoReplacement"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v30, "AutoReplacement"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_4e

    const-string v30, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_KeypadType:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_4f

    const-string v14, ""

    const-string v30, "QWERTY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_KeypadType:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_55

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    :goto_a
    const-string v30, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    move-object/from16 v0, v30

    invoke-interface {v6, v0, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_WordCompletionPoint:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_50

    const-string v30, "SETTINGS_DEFAULT_WORDCOMPLETIONPOINT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_WordCompletionPoint:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_51

    const-string v20, ""

    const-string v30, "100ms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x2

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    :goto_b
    const-string v30, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionType:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_52

    const-string v21, ""

    const-string v30, "COMPLETE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionType:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_5d

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    :goto_c
    const-string v30, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x1

    :cond_52
    if-nez v12, :cond_5f

    sget-boolean v30, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v30, :cond_0

    const-string v30, "SamsungIME"

    const-string v31, "editor has nothing to commit."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_53
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "sip_key_feedback_sound"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :cond_54
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "sip_key_feedback_vibration"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    :cond_55
    const-string v30, "3X4"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_KeypadType:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_56

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_a

    :cond_56
    const-string v30, "HWR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_KeypadType:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_57

    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_a

    :cond_57
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_a

    :cond_58
    const-string v30, "300ms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x2

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_b

    :cond_59
    const-string v30, "500ms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x2

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_b

    :cond_5a
    const-string v30, "1000ms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x2

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_b

    :cond_5b
    const-string v30, "2000ms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x2

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_b

    :cond_5c
    const-string v20, "500"

    goto/16 :goto_b

    :cond_5d
    const-string v30, "STROKE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_5e

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_c

    :cond_5e
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_c

    :cond_5f
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_60

    sget-boolean v30, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v30, :cond_0

    const-string v30, "SamsungIME"

    const-string v31, "commit() success"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_60
    sget-boolean v30, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v30, :cond_0

    const-string v30, "SamsungIME"

    const-string v31, "commit() fail"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setSupportLanguageFromCustomerCSC(Landroid/content/Context;Z)V
    .locals 25

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "com.sec.android.inputmethod_preferences"

    const/16 v23, 0x3

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    if-nez v15, :cond_1

    sget-boolean v21, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v21, :cond_0

    const-string v21, "SamsungIME"

    const-string v22, "getSharedPreferences() error"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    if-nez v5, :cond_2

    sget-boolean v21, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v21, :cond_0

    const-string v21, "SamsungIME"

    const-string v22, "edit() error"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v21, "support_languages"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v21

    const-string v22, "CscFeature_Sip_DisableMultiInputLanuage"

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    const-string v21, "da_mode"

    move-object/from16 v0, v21

    invoke-interface {v5, v0, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v21, "language.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->loadXMLFile(Ljava/lang/String;)V

    const-string v18, ""

    const-string v19, ""

    const-string v21, "SupportList"

    const-string v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    :cond_3
    const-string v21, "SupportList"

    const-string v22, "EN_GB"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    :cond_4
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_7

    if-eqz v7, :cond_6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaLanguage:Ljava/lang/String;

    :cond_5
    :goto_1
    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    sget-boolean v21, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v21, :cond_0

    const-string v21, "SamsungIME"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "prevSupportLanguage = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_5

    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_5

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    const-string v21, "support_languages"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v16, Ljava/util/StringTokenizer;

    const-string v21, ";"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v13, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_9

    if-eqz v20, :cond_9

    const-string v21, "_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v6, v0, :cond_c

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v21, v6, 0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    if-eqz v10, :cond_a

    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    :cond_a
    if-eqz v12, :cond_b

    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    :cond_b
    invoke-static {v10, v12}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    const-string v21, "0x%08x"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v5, v8, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_c
    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const-string v21, "0x%08x"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v5, v8, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    :cond_d
    if-eqz v7, :cond_1c

    const-string v21, "SupportUmlautList"

    const-string v22, "DE"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_e

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    :cond_e
    const-string v21, "SupportUmlautList"

    const-string v22, "EN_GB"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_f

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    :cond_f
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

    :cond_10
    const-string v21, "EnableUmlautList"

    const-string v22, "DE"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_11

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    :cond_11
    const-string v21, "EnableUmlautList"

    const-string v22, "EN_GB"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_12

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    :cond_12
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSelectUmlautLanguageList:Ljava/lang/String;

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaLanguage:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_16

    new-instance v3, Ljava/util/StringTokenizer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaLanguage:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, ";"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v21

    if-eqz v21, :cond_16

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_16

    const-string v21, "_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v6, v0, :cond_1a

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v21, v6, 0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    if-eqz v10, :cond_14

    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    :cond_14
    if-eqz v12, :cond_15

    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    :cond_15
    const-string v21, "da_language"

    invoke-static {v10, v12}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_16
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1c

    const-string v21, "SamsungIME"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mCscVal_DaSupportUmlautLanguageList : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v21, "support_languages"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-direct {v4, v13, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_4
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v21

    if-eqz v21, :cond_1c

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_17

    if-eqz v20, :cond_17

    const-string v21, "_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v6, v0, :cond_1b

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v21, v6, 0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    if-eqz v10, :cond_18

    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    :cond_18
    if-eqz v12, :cond_19

    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    :cond_19
    invoke-static {v10, v12}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const-string v21, "0x%08x"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v5, v8, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    :cond_1a
    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "da_language"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    :cond_1b
    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const-string v21, "0x%08x"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v5, v8, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    :cond_1c
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d

    sget-boolean v21, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v21, :cond_0

    const-string v21, "SamsungIME"

    const-string v22, "commit() success"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1d
    sget-boolean v21, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v21, :cond_0

    const-string v21, "SamsungIME"

    const-string v22, "commit() fail"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
