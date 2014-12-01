.class public abstract Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerSessionFactory;
.super Ljava/lang/Object;
.source "SamsungIMESpellCheckerSessionFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerService;)Landroid/service/textservice/SpellCheckerService$Session;
    .locals 1

    new-instance v0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerSession;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerSession;-><init>(Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerService;)V

    return-object v0
.end method
