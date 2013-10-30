.class public abstract Lcom/nuance/swype/connect/api/HostSystemData;
.super Ljava/lang/Object;
.source "HostSystemData.java"


# static fields
.field public static final TYPE_EMAIL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCurrentLocale()Ljava/lang/String;
.end method

.method public abstract getRegisteredAccounts(I)[Landroid/accounts/Account;
.end method
