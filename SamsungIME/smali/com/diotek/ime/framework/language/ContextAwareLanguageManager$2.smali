.class Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$2;
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
        "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$2;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;)I
    .locals 4

    invoke-virtual {p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    check-cast p2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$2;->compare(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;)I

    move-result v0

    return v0
.end method
