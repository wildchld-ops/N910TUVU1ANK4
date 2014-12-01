.class Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$1;
.super Ljava/lang/Object;
.source "ContextAwareLanguageManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$1;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;)I
    .locals 2

    iget-byte v0, p1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    iget-byte v1, p2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->languageID:I

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->languageID:I

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-byte v0, p2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    iget-byte v1, p1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;

    check-cast p2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;

    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$1;->compare(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;)I

    move-result v0

    return v0
.end method
