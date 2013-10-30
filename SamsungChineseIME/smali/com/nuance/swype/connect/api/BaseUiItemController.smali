.class public Lcom/nuance/swype/connect/api/BaseUiItemController;
.super Ljava/lang/Object;
.source "BaseUiItemController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/api/BaseUiItemController$IUiItem;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public getDisplayStateForItem(Lcom/nuance/swype/connect/api/BaseUiItemController$IUiItem;)Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;
    .locals 1
    .parameter "item"

    .prologue
    .line 14
    sget-object v0, Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;->HIDDEN:Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;

    return-object v0
.end method
