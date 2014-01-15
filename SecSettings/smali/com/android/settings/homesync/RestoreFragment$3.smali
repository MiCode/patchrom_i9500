.class Lcom/android/settings_ex/homesync/RestoreFragment$3;
.super Ljava/lang/Object;
.source "RestoreFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/homesync/RestoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/homesync/RestoreFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/homesync/RestoreFragment;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/settings_ex/homesync/RestoreFragment$3;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v1, 0x7f0b034b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 187
    .local v0, tmpView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 188
    iget-object v2, p0, Lcom/android/settings_ex/homesync/RestoreFragment$3;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/settings_ex/homesync/RestoreFragment;->mDestDateName:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/settings_ex/homesync/RestoreFragment;->access$102(Lcom/android/settings_ex/homesync/RestoreFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    :cond_0
    return-void
.end method
