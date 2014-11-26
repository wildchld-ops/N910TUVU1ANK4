.class public Lcom/android/mms/ui/RecipientPerson;
.super Ljava/lang/Object;
.source "RecipientPerson.java"


# instance fields
.field private Name:Ljava/lang/String;

.field private Number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/ui/RecipientPerson;->Name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mms/ui/RecipientPerson;->Number:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientPerson;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientPerson;->Number:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/RecipientPerson;->Name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/RecipientPerson;->Number:Ljava/lang/String;

    return-void
.end method
