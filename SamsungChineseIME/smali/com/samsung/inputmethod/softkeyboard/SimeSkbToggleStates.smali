.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;
.super Ljava/lang/Object;
.source "SimeSkbToggleStates.java"


# static fields
.field public static final MAX_TOGGLE_STATES:I = 0xe


# instance fields
.field public mKeyStates:[I

.field public mKeyStatesNum:I

.field public mQwerty:Z

.field public mQwertyUpperCase:Z

.field public mRowIdToEnable:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0xe

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mKeyStates:[I

    return-void
.end method
