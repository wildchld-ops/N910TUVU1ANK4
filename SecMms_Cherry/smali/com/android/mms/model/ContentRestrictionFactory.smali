.class public Lcom/android/mms/model/ContentRestrictionFactory;
.super Ljava/lang/Object;
.source "ContentRestrictionFactory.java"


# static fields
.field private static sContentRestriction:Lcom/android/mms/model/ContentRestriction;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentRestriction()Lcom/android/mms/model/ContentRestriction;
    .locals 1

    sget-object v0, Lcom/android/mms/model/ContentRestrictionFactory;->sContentRestriction:Lcom/android/mms/model/ContentRestriction;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/model/CarrierContentRestriction;

    invoke-direct {v0}, Lcom/android/mms/model/CarrierContentRestriction;-><init>()V

    sput-object v0, Lcom/android/mms/model/ContentRestrictionFactory;->sContentRestriction:Lcom/android/mms/model/ContentRestriction;

    :cond_0
    sget-object v0, Lcom/android/mms/model/ContentRestrictionFactory;->sContentRestriction:Lcom/android/mms/model/ContentRestriction;

    return-object v0
.end method
