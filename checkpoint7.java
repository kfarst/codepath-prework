/**
 * Definition for binary tree
 * class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode(int x) { val = x; }
 * }
 */
public class Solution {
  public ArrayList<TreeNode> generateTrees(int a) {
    return constructAllPossibleBSTs(1, a);
  }

  private ArrayList<TreeNode> constructAllPossibleBSTs(int start, int end) {
    ArrayList<TreeNode> arr = new ArrayList<TreeNode>();

    if (start > end) {
      arr.add(null);
      return arr;
    }

    for (int i = start; i <= end; i++) {
      ArrayList<TreeNode> leftSubTree = constructAllPossibleBSTs(start, i - 1);
      ArrayList<TreeNode> rightSubTree = constructAllPossibleBSTs(i + 1, end);

      for (int j = 0; j < leftSubTree.size(); j++) {

        TreeNode left = leftSubTree.get(j);

        for (int k = 0; k < rightSubTree.size(); k++) {
          TreeNode right = rightSubTree.get(k);
          TreeNode root = new TreeNode(i);
          root.left = left;
          root.right = right;
          arr.add(root);
        }
      }
    }

    return arr;
  }
}
