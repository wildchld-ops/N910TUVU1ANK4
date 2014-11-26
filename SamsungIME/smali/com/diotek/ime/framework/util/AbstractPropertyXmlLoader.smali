.class public abstract Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;
.super Ljava/lang/Object;
.source "AbstractPropertyXmlLoader.java"


# instance fields
.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-void
.end method


# virtual methods
.method public abstract getLanguageXmlParser(Landroid/content/res/Resources;)Landroid/content/res/XmlResourceParser;
.end method

.method public abstract getRepositoryXmlParser()Landroid/content/res/XmlResourceParser;
.end method

.method public abstract getRepositoryXmlParser(Landroid/content/res/Resources;)Landroid/content/res/XmlResourceParser;
.end method

.method public abstract getRepositoryXmlParserKor()Landroid/content/res/XmlResourceParser;
.end method
