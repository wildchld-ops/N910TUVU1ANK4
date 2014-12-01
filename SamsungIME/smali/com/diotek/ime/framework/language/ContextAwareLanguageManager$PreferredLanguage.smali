.class Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;
.super Ljava/lang/Object;
.source "ContextAwareLanguageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreferredLanguage"
.end annotation


# instance fields
.field public languageID:I

.field public preference:B

.field final synthetic this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;


# direct methods
.method public constructor <init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;IB)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->languageID:I

    iput-byte v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    iput p2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->languageID:I

    iput-byte p3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    return-void
.end method
