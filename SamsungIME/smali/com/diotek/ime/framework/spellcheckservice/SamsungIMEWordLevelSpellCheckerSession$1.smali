.class Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$1;
.super Landroid/database/ContentObserver;
.source "SamsungIMEWordLevelSpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;-><init>(Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$1;->this$0:Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$1;->this$0:Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;

    # invokes: Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->clearTypoListAndCache()V
    invoke-static {v0}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->access$000(Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;)V

    return-void
.end method
