.class public final Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerService;
.super Landroid/service/textservice/SpellCheckerService;
.source "SamsungIMESpellCheckerService.java"


# static fields
.field public static final APOSTROPHE:Ljava/lang/String; = "\u2019"

.field public static final SINGLE_QUOTE:Ljava/lang/String; = "\'"


# instance fields
.field private mSession:Landroid/service/textservice/SpellCheckerService$Session;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/textservice/SpellCheckerService;-><init>()V

    return-void
.end method


# virtual methods
.method public createSession()Landroid/service/textservice/SpellCheckerService$Session;
    .locals 3

    invoke-static {p0}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerSessionFactory;->newInstance(Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerService;)Landroid/service/textservice/SpellCheckerService$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerService;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    const-string v0, "SamsungIMEWordLevelSpellCheckerSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SamsungIMESpellCheckerService-createSession] mSession : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerService;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerService;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerService;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSamsungIMESpellCheckerSession()Landroid/service/textservice/SpellCheckerService$Session;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerService;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method
