/**
 * Definition for binary tree with next pointer.
 * public class TreeLinkNode {
 *     int val;
 *     TreeLinkNode left, right, next;
 *     TreeLinkNode(int x) { val = x; }
 * }
 */
public class Solution {
  public void connect(TreeLinkNode root) {
    TreeLinkNode [] pointers = new TreeLinkNode[100];
    traverseAndConnect(root, pointers, 1);
  }

  private void traverseAndConnect(TreeLinkNode root, TreeLinkNode[] pointers, int level) {
    if (root == null) return;

    if (pointers[level] == null) {
      pointers[level] = root;
    } else {
      TreeLinkNode currPointer = pointers[level];
      currPointer.next = root;
      pointers[level] = root;
    }

    traverseAndConnect(root.left, pointers, level + 1);
    traverseAndConnect(root.right, pointers, level + 1);
  }
}
