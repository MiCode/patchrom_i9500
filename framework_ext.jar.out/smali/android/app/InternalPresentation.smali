.class public Landroid/app/InternalPresentation;
.super Landroid/app/Presentation;
.source "InternalPresentation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 1
    .parameter "outerContext"
    .parameter "display"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/InternalPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .locals 2
    .parameter "outerContext"
    .parameter "display"
    .parameter "theme"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    .line 36
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 39
    :cond_0
    return-void
.end method
