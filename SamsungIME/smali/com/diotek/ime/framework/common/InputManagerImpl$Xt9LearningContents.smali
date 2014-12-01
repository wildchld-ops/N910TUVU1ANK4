.class public Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
.super Ljava/lang/Object;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Xt9LearningContents"
.end annotation


# instance fields
.field public mAction:I

.field public final mInput:Ljava/lang/String;

.field public mIsSentenceBased:Z

.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method public constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;Ljava/lang/String;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;->mInput:Ljava/lang/String;

    iput p3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;->mAction:I

    iput-boolean p4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;->mIsSentenceBased:Z

    return-void
.end method
