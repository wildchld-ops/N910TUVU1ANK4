.class public Lcom/diotek/ime/framework/common/InputManagerImpl$SpellCheck;
.super Ljava/lang/Object;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpellCheck"
.end annotation


# instance fields
.field public mCheckedDone:Z

.field public final mInput:Ljava/lang/String;

.field public mMissSpell:Z

.field public mSuggestedWords:[Ljava/lang/String;

.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method public constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$SpellCheck;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$SpellCheck;->mInput:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$SpellCheck;->mMissSpell:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$SpellCheck;->mCheckedDone:Z

    return-void
.end method
