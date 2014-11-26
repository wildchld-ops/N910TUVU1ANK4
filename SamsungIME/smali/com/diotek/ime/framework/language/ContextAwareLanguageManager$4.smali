.class Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$4;
.super Ljava/lang/Object;
.source "ContextAwareLanguageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$4;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$4;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    # getter for: Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDir:Ljava/io/File;
    invoke-static {v1}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->access$000(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$4;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    # getter for: Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDir:Ljava/io/File;
    invoke-static {v1}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->access$000(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    const-string v1, "ContextAwareLanguageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lang directory created = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$4;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$4;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    # getter for: Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDir:Ljava/io/File;
    invoke-static {v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->access$000(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)Ljava/io/File;

    move-result-object v2

    const-string v3, "csl.db"

    const/4 v4, 0x1

    # invokes: Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->loadDb(Ljava/io/File;Ljava/lang/String;I)V
    invoke-static {v1, v2, v3, v4}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->access$100(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;Ljava/io/File;Ljava/lang/String;I)V

    return-void
.end method
